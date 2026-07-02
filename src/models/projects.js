import db from './db.js'

const getAllProjects = async() => {
    const query = `
        SELECT project_id, project_name, project_description
        FROM public.project;
    `;

    const result = await db.query(query);

    return result.rows;
}

export { getAllProjects }